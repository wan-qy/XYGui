require 'XYGui/xy_app.rb'
require 'XYGui/xy_mainwindow.rb'
require 'XYGui/xy_calender.rb'
require 'XYGui/xy_vertical_layout.rb'

XYApp.new("wwc") do |app|
	XYMainWindow.new(app, nil, {:title => "Calender", :height => 240, :width => 280}) do |wnd|
		XYCalender.new(app, wnd)
	end.show
end.mainloop