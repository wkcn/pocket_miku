# -*- coding: utf-8 -*-
require "pocket_miku/version"
require "pocket_miku/literal"
require "pocket_miku/exception"
require "pocket_miku/packet_factory"
require "pocket_miku/base"
require "pocket_miku/chartable"
require "pocket_miku/note"
require "pocket_miku/score"
require "pocket_miku/device"
require 'stringio'
require 'rational'

module PocketMiku
  extend self

  # ポケットミクに歌わせるためのショートカットメソッド
  # ==== Args
  # [device] String|IO デバイスファイルの場所
  def sing(device)
    PocketMiku::Device.new(device, &Proc.new)
  end
end
