class Stock < ApplicationRecord

  def self.new_lookup(ticker_symbol)
    client = IEX::Api::Client.new(publishable_token: 'Tpk_fbaee31984504b589e9ed2e943c96692',
                                  endpoint: 'https://sandbox.iexapis.com/v1')
  client.price(ticker_symbol)
  end
end
