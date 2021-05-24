local hyper = { "cmd", "alt", "ctrl", "shift" }
hs.hotkey.bind(hyper, "r", function()
  hs.reload()
end)
hs.notify.new({title="Hammerspoon", informativeText="Config loaded"}):send()

hs.window.animationDuration = 0
hs.hotkey.bind(hyper, "h", function()
  local win = hs.window.focusedWindow();
  if not win then return end
win:moveToUnit(hs.layout.left50)
end)
hs.hotkey.bind(hyper, "t", function()
  local win = hs.window.focusedWindow();
  if not win then return end
win:moveToUnit(hs.layout.maximized)
end)
hs.hotkey.bind(hyper, "n", function()
  local win = hs.window.focusedWindow();
  if not win then return end
win:moveToScreen(win:screen():next())
end)
hs.hotkey.bind(hyper, "s", function()
  local win = hs.window.focusedWindow();
  if not win then return end
win:moveToUnit(hs.layout.right50)
end)
hs.hotkey.bind(hyper, "c", function()
  local win = hs.window.focusedWindow();
  if not win then return end
win:moveToUnit(hs.layout.right75)
end)
hs.hotkey.bind(hyper, "g", function()
  local win = hs.window.focusedWindow();
  if not win then return end
win:moveToUnit(hs.layout.left75)
end)


local applicationHotkeys = {
  b = 'Google Chrome',
  i = 'iTerm',
  d = 'Simulator.app'
}
for key, app in pairs(applicationHotkeys) do
  hs.hotkey.bind(hyper, key, function()
    hs.application.launchOrFocus(app)
  end)
end

expose = hs.expose.new(nil,{showThumbnails=true})
expose_app = hs.expose.new(nil,{onlyActiveApplication=true})
expose_space = hs.expose.new(nil,{includeOtherSpaces=false})
expose_browsers = hs.expose.new{'Safari','Google Chrome'}
hs.hotkey.bind(hyper, "e", "Expose",function()expose:toggleShow()end)
hs.hotkey.bind(hyper, "u", "App Expose",function()expose_app:toggleShow()end)
