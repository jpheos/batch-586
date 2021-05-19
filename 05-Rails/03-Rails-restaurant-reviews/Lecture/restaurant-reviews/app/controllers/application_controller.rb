class ApplicationController < ActionController::Base
  def test
    ap params.as_json
    head 200
  end

end
