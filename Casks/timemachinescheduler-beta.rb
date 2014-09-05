class TimemachineschedulerBeta < Cask
  version '4.0b3(483)'
  sha256 '2cd1c172da73e7ff26ddfa71417dbf323a635b3eef2c8f3025edbaa2686880ba'

  url 'http://www.klieme.com/Downloads/TimeMachineScheduler/TimeMachineScheduler_4.0b3Full.zip'
  homepage 'http://www.klieme.com/TimeMachineScheduler.html'

  nested_container 'TimeMachineScheduler_4.0b3.dmg'
  link 'TimeMachineScheduler.app'
end
