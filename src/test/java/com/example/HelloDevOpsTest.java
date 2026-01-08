package com.example;

public class HelloDevOpsTest {
    public static void main(String[] args) {
        System.out.println("Testing HelloDevOps class...");
        String message = HelloDevOps.getMessage();

        if (message.equals("Hello from DevOps Training")) {
            System.out.println("Test passed!");
            System.exit(0);
        } else {
            System.out.println("Test failed!");
            System.exit(1);
        }
    }
}
