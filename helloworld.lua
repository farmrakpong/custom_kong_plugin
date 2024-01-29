-- File: helloworld.lua

local plugin = {
    PRIORITY = 999, -- กำหนดลำดับความสำคัญของ Plugin
    VERSION = "0.1", -- เลขเวอร์ชันของ Plugin
  }
  
  -- ฟังก์ชัน init ทำหน้าที่เรียกใช้ครั้งเดียวเมื่อ Plugin ถูกเรียกใช้งาน
  function plugin:init()
    -- สามารถทำสิ่งใดก็ได้ในขั้นตอนนี้ เมื่อ Plugin ถูกเรียกใช้งาน
    kong.log.info("Hello World Plugin initialized")
  end
  
  -- ฟังก์ชัน access ใช้สำหรับประมวลผลคำขอที่เข้ามา
  function plugin:access(plugin_conf)
    -- ประมวลผลคำขอที่เข้ามาที่นี่
    kong.log.info("Hello World!")
  end
  
  -- ส่งคืน Plugin ที่สร้างขึ้น
  return plugin
  