# Architecture Overview – ChurchOps Lab

## 1. Purpose

The architecture is intentionally simple in its initial stages and is expected to evolve incrementally as new technical and functional requirements emerge.

This document describes the **current architectural vision**, not a final or fixed state.

## 3. High-Level Architecture

At its current stage, the system follows a **frontend + backend-as-a-service** model.

```text
[ Browser ]
     |
     v
[ Angular Frontend ]
     |
     v
[ Supabase ]