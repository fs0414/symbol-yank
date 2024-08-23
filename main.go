package main

import (
    "fmt"
    "math/rand"
    "time"

    "github.com/atotto/clipboard"
)

func main() {
    emojis := []string{"🐶", "🐱", "🐭", "🐹", "🐰", "🦊", "🐻", "🐼"}

    rand.Seed(time.Now().UnixNano())

    randomEmoji := emojis[rand.Intn(len(emojis))]

    result := randomEmoji + randomEmoji + randomEmoji

    clipboard.WriteAll(result)

    fmt.Println(result)
}
