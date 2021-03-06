require 'XYGui'
require 'XYGui/winapi_base.rb'
require 'XYGui/xy_app.rb'
require 'XYGui/xy_mainwindow.rb'
require 'XYGui/xy_pushbutton.rb'
require 'XYGui/xy_vertical_layout.rb'
require 'XYGui/xy_textedit.rb'
require 'XYGui/xy_console.rb'


app = XYApp.new("asimplewindow")
wnd = XYMainWindow.new(app, nil, {:layout => XYVerticalLayout, :height => 320, :width => 600, :title => "Happy playing"})
editor = XYTextEdit.new(app, wnd, {:text => "Write something here", :vscroll => true})
button1 = XYPushButton.new(app, wnd, {:text => 'Clear'})
button1.connect(:ON_COMMAND) {|sender, data| editor.text=""}
button2 = XYPushButton.new(app, wnd, {:text => 'Quit'})
button2.connect(:ON_COMMAND) {|sender, data| app.exit}
wnd.show
app.mainloop
