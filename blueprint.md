
# Project Blueprint

## Overview

This document outlines the structure, design, and features of the Flutter application. It serves as a single source of truth for the project's implementation details.

## Current State (as of initial analysis)

### Features

*   A multi-tab application with a bottom navigation bar.
*   Five tabs: Inicio, Comidas, Bebidas, Favoritos, and Amigos.
*   A custom app bar (`ItaAppBar`).
*   A custom bottom navigation bar (`ItaBottomNav`).

### Style and Design

*   The application uses a default Material theme.
*   No custom fonts are explicitly set.
*   The color scheme is the default Material blue.

## Plan for Current Request: "arregla main.dart"

The user wants to "fix" `main.dart`. I will interpret this as a request to improve the code quality and structure according to the project guidelines.

### Steps

1.  **Add Dependencies:** Add `provider` for state management and `google_fonts` for custom typography to `pubspec.yaml`.
2.  **Implement Theme Provider:** Create a `ThemeProvider` class to manage the application's theme (light/dark mode).
3.  **Define a Centralized Theme:**
    *   Create a new file `lib/ita_theme.dart` (or modify the existing one) to define `ThemeData` for both light and dark modes.
    *   Use `ColorScheme.fromSeed` for the color scheme.
    *   Use `google_fonts` to define a custom `TextTheme`.
4.  **Refactor `main.dart`:**
    *   Wrap the application in a `ChangeNotifierProvider` for the `ThemeProvider`.
    *   Consume the `ThemeProvider` to set the `theme`, `darkTheme`, and `themeMode` properties of the `MaterialApp`.
    *   Ensure the main screen correctly displays the tabs and responds to theme changes.
5.  **Clean up old theme/navigation files:** Consolidate styling into the new `ita_theme.dart` and remove redundant code.
