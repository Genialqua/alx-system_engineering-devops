#!/usr/bin/env ruby
awk -F: '{print $11, $12, $13, $14, $15, $16, $17, $18}' text_messages.log | cut -c3-60
