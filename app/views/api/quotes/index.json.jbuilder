# @quotes.each {|quote| json.extract! quote, :id, :text, :author }
ids = {ids: @quotes.collect {|quote| quote.id }}

json.extract! ids, :ids
