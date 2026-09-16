#!/usr/bin/env ruby
# encoding: UTF-8
# coding: UTF-8

# Local DNS server for smart routing of queries
# RU: Локальный DNS-сервер для умной диспетчеризации запросов
#
# This program is free software and distributed under the GNU GPLv2
# RU: Это свободное программное обеспечение распространяется под GNU GPLv2
# 2026 (c) Michael Galyuk
# RU: 2026 (c) Михаил Галюк

#TODO:
#1) сохранение доменов и IP в локальном кеше (txt-файл): "google.com 10.11.12.13  2026.09.15 23:58"
#2) при наличии свежей записи брать из кеша
#3) при повторных запросах за малый интервал обновлять кеш

require 'uri'
require 'async/dns'

INTERNAL_LIST = [
't2.ru',
'mail.ru',
'ya.ru',
'yandex.ru',
'ozon.ru',
'opennet.ru',
'gismeteo.ru',
'habr.com',
'linux.org.ru',
'yoomoney.ru',
'nalog.ru',
'sberbank.ru',
'gosuslugi.ru',
'ngenix.net'
]

EXTERNAL_LIST = [
'google.com',
'googlevideo.com',
'youtube.com',
'instagram.com',
'cdninstagram.com',
'facebook.com',
'fbcdn.net',
'ytimg.com',
'bestchange.net',
'bestchange.ru'
]

def domain_in_list?(name, list)
  list.include?(name)
end

def get_base_domain(url, simple=nil, del_www=true)
  res = nil
  if url
    url.strip!
    #p '^^^^^'
    #p url
    begin
      #url = "http://#{url}" if URI.parse(url).scheme.nil?
      url = '//'+url if not url.include?('//')
      res = URI.parse(url).host
      #p res
      res.downcase! if res
    rescue URI::InvalidURIError
      res = nil
    end
    if res
      res = res[4..-1] if del_www and res.start_with?('www.')
      res = res.split('.').last(2).join('.') if res and simple
    end
  end
  res
end

def get_doman_of_depth(url, depth=2, del_www=true, clear_dom=true)
  res = nil
  if url
    url = url.to_s
    if url.is_a?(String) and (url.size>0)
      if clear_dom
        res = get_base_domain(url, nil, del_www)
      else
        res = url
      end
      i = res.size
      d = 0
      #p res
      while (i>0) and (d<depth)
        i -= 1
        d += 1 if (res[i]=='.')
      end
      #p [d, i, res[i]]
      if (d>0) and (i>=0) and (res[i]=='.')
        res = res[i+1..-1]
      end
    end
  end
  res
end

#url = 'www.google.com'
#dom = get_base_domain(url)
#p dom
#zone = get_doman_of_depth(dom, 1, false, false)
#p zone
#Kernel.exit!

class MyDnsServer < Async::DNS::Server
  def initialize(*args)
    super(*args)
    @upstream ||= Async::DNS::Resolver.default
    #@resolver ||= Async::DNS::System.resolver
    @resolver1 ||= Async::DNS::Resolver.new(
      Async::DNS::Endpoint.for('1.1.1.1')
    )

    @resolver2 ||= Async::DNS::Resolver.new(
      Async::DNS::Endpoint.for('176.59.223.159')
    )
    #resolver.addresses_for("www.google.com.")
    # => [#<Resolv::IPv4 172.217.167.100>, #<Resolv::IPv6 2404:6800:4006:809::2004>]
  end

  def get_first_ip4_from_response(response)
    res = nil
    if response.is_a?(Resolv::DNS::Message) and response.answer \
    and response.answer.is_a?(Array) and (response.answer.count>0)
      i = 0
      while (i<response.answer.count) and res.nil?
        elem = response.answer[i]
        #p elem
        #p elem.class.name
        if elem.is_a?(Array) and (elem.count>2)
          addr = elem[2]
          #p addr
          #p addr.class.name
          if addr.is_a?(Resolv::DNS::Resource::IN::A)
            addr = addr.address
            #p addr
            #p addr.class.name
            if addr.is_a?(Resolv::IPv4)
              #addr = addr.address
              #p addr
              res = addr
            end
          end
        end
        i += 1
      end
    end
    res
  end

  def get_addr_from_resolver(transaction, resolver)
    #res = nil
    response = transaction.passthrough(resolver)
    #p '-->RESOLVER: '+response.class.name+' '+response.inspect
    res = get_first_ip4_from_response(response)
    #if response.is_a?(Resolv::DNS::Message) and (response.answer.count>0)
      #p response.answer[0].class.name
      #p response.answer[0]
      #p response.answer[0].methods
      #addr = get_first_ip4(answer)
      #addr = response.answer[0][2]
      #p addr.class.name
      #p addr
      #if addr.is_a?(Resolv::IPv4)
        #addr = addr.address
        #p addr
        #res = addr
      #end
    #end
    #p res.methods
    res
  end

  LocalCache = {}

  def process(name, resource_class, transaction)
    title = $1
    #if resource_class==Resolv::DNS::Resource::IN::A or resource_class==Resolv::DNS::Resource::IN::HTTPS
    if (name and (not resource_class==Resolv::DNS::Resource::IN::AAAA) \
    and (not resource_class==Resolv::DNS::Resource::Type12_Class1) \
    and (not resource_class==Resolv::DNS::Resource::IN::HTTPS))
      puts('====='+Time.now.strftime('%H:%M:%S')+' ['+name.to_s+'] '+resource_class.to_s)
      addr = LocalCache[name]
      #if true #external_domain?(name)
      if addr
        puts(' cache addr='+addr.to_s+' ('+name+')')
      else
        #p '00.1'
        domain2 = get_doman_of_depth(name, 2)
        #p '00.2'
        if domain2=='googlevideo.com'
          p '***YT-VIDEO!'
          #if name=='manifest.googlevideo.com'
          #  addr = '108.177.14.136' #'108.177.14.190' 64.233.164.91 74.125.205.190
          #else
          #  addr = '176.59.223.12' #rr1---sn-uxaxufvg0-n8me.googlevideo.com
          #176.59.223.13 (rr2---sn-uxaxufvg0-n8me.googlevideo.com
          #176.59.223.14 (rr3---sn-uxaxufvg0-n8me.googlevideo.com
          #74.125.100.105 (rr4---sn-5hnekn7z.googlevideo.com
          #74.125.100.164 (rr4---sn-oj5hn5-5v.googlevideo.com
          #173.194.151.34 (rr16---sn-n8v7snl7.googlevideo.com
          #173.194.163.225 (rr15---sn-n8v7kn7l.googlevideo.com
          #173.194.178.223 (rr13---sn-n8v7znly.googlevideo.com)

          addr = get_addr_from_resolver(transaction, @resolver1)
        elsif domain_in_list?(domain2, EXTERNAL_LIST)
          p '+++EXTERNAL!'
          addr = get_addr_from_resolver(transaction, @resolver1)
        else
          zone = get_doman_of_depth(domain2, 1, false, false)
          #p ' zone='+zone.inspect
          #p domain_in_list?(domain2, INTERNAL_LIST)
          if zone=='arpa'
            addr = nil
          else
            if ((zone=='ru') or (zone=='su') or domain_in_list?(domain2, INTERNAL_LIST))
              p '>>>INTERNAL!'
              addr = get_addr_from_resolver(transaction, @resolver2)
            else
              p '+++EXTERNAL OTHER!'
              addr = get_addr_from_resolver(transaction, @resolver1)
            end
          end
        end
        #p '-->UPSREAM!'
        #transaction.passthrough!(self.upstream)
        #res = transaction.passthrough!(@resolver2)
        #response = transaction.passthrough(@resolver2, name, resource_class)
        if addr
          addr_s = addr.to_s
          puts(' found addr='+addr_s+' ('+name+')')
          LocalCache[name] = addr_s
        end
      end

      if addr
        #p '111 addr='+addr.inspect
        transaction.respond!(addr)
        #p '222'
      else
        transaction.fail!(:ServFail)
      end

      #response = transaction.passthrough(@resolver2)
      #p '-->RESOLVER2: '+response.class.name+' '+response.inspect
      #if response.is_a?(Resolv::DNS::Message) and (response.answer.count>0)
      #  p response.answer[0].class.name
      #  p response.answer[0]
      #  p response.answer[0].methods
      #  addr = response.answer[0][2]
      #  p addr.class.name
      #  p addr
      #  if addr.is_a?(Resolv::IPv4)
      #    addr = addr.address
      #    p addr
      #    transaction.respond!(addr)
      #  else
      #    transaction.fail!(:ServFail)
      #  end
        #yield response if block_given?
        # Recursion is available and is being used:
        # See issue #26 for more details.
        #if @response
          #@response.ra = 1
          #@response.merge!(response)
        #end
      #else
      #  transaction.fail!(:ServFail)
      #end
      #p res.methods
    else
      #transaction.passthrough!(self.upstream)
      #transaction.passthrough!(self.resolver)
      #p '--x|IPv6 FAIL!'
      transaction.fail!(:NXDomain)
    end
  end
end

#p Async::DNS::System::Socket.ip_address_list
#p Async::DNS.socket.ip_address_list

#endpoint = Async::DNS::Endpoint.for('localhost', port: 5300)
endpoint = Async::DNS::Endpoint.for('127.0.0.1', port: 53)
#p endpoint
#p endpoint.methods
server = MyDnsServer.new(endpoint)
#p '------'
#p server.ip_address_list
server.run
#server.stop

#Async do
#  endpoint = Async::DNS::Server.default_endpoint(5300)
#  MyDnsServer.new(endpoint).run
#end

#Then to test you could use dig like so:
#dig @localhost -p 5300 google.com


