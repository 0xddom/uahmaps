class PolylineController < ApplicationController
  def decode
    p params[:polyline]
#    p Base64.decode64 params[:polyline]
    @points_lst = Polylines::Decoder.decode_polyline params[:polyline].gsub("\\\\", "\\"), 1e6
  end
end
