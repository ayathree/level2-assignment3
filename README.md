# Level-2 Assignment-3

## SQL Query Analysis: Vehicle Rental System

### Project Overview

This document explains four SQL queries written for a vehicle rental database. Each query solves a specific business problem while demonstrating core SQL concepts.

### Query Explanations

#### Booking Details Report

`Business Need:` Show all customer bookings with vehicle and customer details for customer service tracking.

`SQL Concept:` Multi-Table JOIN

`Key Insight:`

- Uses `INNER JOIN` to connect `bookings` → `users` and `bookings` → `vehicles`
- Filters with `WHERE users.role = 'Customer'` to exclude administrative users
- Combines data from three tables into one readable report showing who rented what and when

#### Unused Vehicles Identification

`Business Need:` Find vehicles that have never been rented to optimize fleet inventory.

`SQL Concept:` Subquery with `NOT EXISTS`

`Key Insight:`
- Uses correlated subquery `(WHERE v.vehicle_id = b.vehicle_id)`
- `NOT EXISTS` is more efficient than `LEFT JOIN` for checking `"non-existence"`
- Returns complete vehicle details even with zero booking history

#### Available Cars Filter

`Business Need:` Display all available cars for the rental website or staff interface.

`SQL Concept:` Basic Filtering with `WHERE`

`Key Insight:`
- Simple `WHERE` with `AND (status = 'available' AND type = 'car')`
- Relies on proper `ENUM/constraint` design in the database
- Example of how clean data design enables simple, reliable queries

#### Popular Vehicles Analysis

`Business Need:` Identify frequently booked vehicles for marketing promotions.

`SQL Concept:` Aggregation with `GROUP BY` and `HAVING`

`Key Insight:`
- `GROUP BY` groups bookings by vehicle
- `COUNT(*)` calculates total bookings per vehicle
- `HAVING COUNT(*) > 2` filters to show only popular vehicles `(more than 2 bookings)`
- Demonstrates the critical difference: `WHERE` filters rows, `HAVING` filters groups









