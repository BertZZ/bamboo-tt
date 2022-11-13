class WalletsController < ApplicationController
  def show
    @wallet_ballance = helpers.current_user.wallet.balance
  end
end
