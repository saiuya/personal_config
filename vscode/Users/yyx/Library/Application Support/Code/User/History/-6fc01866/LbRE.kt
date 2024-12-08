package com.example.demo

import org.springframework.boot.autoconfigure.SpringBootApplication
import org.springframework.boot.runApplication

@SpringBootApplication
class DemoApplication

fun mai(args: Array<String>) {
	runApplication<DemoApplication>(*args)
}
