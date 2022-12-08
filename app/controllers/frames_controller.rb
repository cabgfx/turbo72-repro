class FramesController < ApplicationController
  def exception
    raise "Mayday"
  end

  def missing
  end
end
