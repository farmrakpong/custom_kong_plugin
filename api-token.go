package main

import (
	"fmt"
	"github.com/Kong/go-pdk"
	"github.com/Kong/go-pdk/server"
	// "time"
)

type Config struct {
	// WaitTime int
}

func New() interface{} {
	return &Config{}
}

// var requests = make(map[string]time.Time)

func (config Config) Access(kong *pdk.PDK) {
	apiKey, _ := kong.Request.GetHeader("bbbb")
	if apiKey == "" {
		// ไม่พบ API key ใน Header
		kong.Response.Exit(401, []byte("Unauthorized"), make(map[string][]string))
	}

	// ทำสิ่งที่ต้องการกับ API key ที่ได้รับ
	fmt.Println("API Key:", apiKey)
}

func main() {
	Version := "1.1"
	Priority := 1000
	_ = server.StartServer(New, Version, Priority)
}