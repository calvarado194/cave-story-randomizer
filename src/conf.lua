if io then
  io.stdout:setvbuf("no")
end

function love.conf(t)
  t.window = {
    title = "Cave Story Randomizer",
    icon = 'assets/icon/randoconfig.png',
    width = 640,
    height = 480,
    resizable = false,
  }
  t.version = '11.1'
  t.console = false
  t.identity = 'CaveStoryRandomizer'
  t.accelerometerjoystick = false
  t.gammacorrect = false
  
  t.modules.audio = false
  t.modules.joystick = false
  t.modules.physics = false
  t.modules.sound = false
  t.modules.thread = false
  t.modules.touch = false
  t.modules.video = false

  for _,a in pairs(arg) do
    if a == "--headless" then
      t.window, t.modules.window, t.modules.graphics = false, false, false
    end
  end

  t.releases = {
    -- This is the name of the zip archive which contains your game.
    title = 'CaveStoryRandomizer',
    -- This is the name of your game's executable.
    package = 'Cave Story Randomizer',
    loveVersion = '11.2',
    version = 'v2.0-RC2',
    author = 'duncathan',
    email = 'dunc@duncathan.com',
    description = 'A randomizer for Cave Story',
    homepage = 'https://github.com/cave-story-randomizer/cave-story-randomizer',
    -- MacOS needs this.
    identifier = 'CaveStoryRandomizer',
    excludeFileList = {
    },
    compile = false,
    releaseDirectory = 'releases',
  }
end
