package main

import (
	"os/exec"
	"testing"
)

func TestMain(t *testing.T) {
	out, err := exec.Command("go", "run", "main.go").Output()
	if err != nil {
		t.Fatalf("Failed to run main.go: %s", err)
	}
	expected := "Hello, World!\n"
	if string(out) != expected {
		t.Fatalf("Expected %q, got %q", expected, out)
	}
}
