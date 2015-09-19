# -*- coding: utf-8 -*-
FactoryGirl.define do
  factory :article do
    sequence(:body) {|i| " LEA GR1, #{i}\n RET" }
  end
end
