module V1
  class CasefeedController < ApplicationController
    def show
      cases = MedCase.last()
    end
  end
end