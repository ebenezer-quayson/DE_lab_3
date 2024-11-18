# **Week 3 Lab: Database and Data Management Solutions**

## **Overview**
TechCorp, a rapidly growing tech company, relies on an outdated database system with all its data stored in a single, unstructured table. This approach results in data redundancy, slow queries, and challenges in maintaining data integrity. This lab provides a comprehensive solution by guiding you through the process of redesigning this system into a well-structured relational database, managing transactions effectively, and exploring modern data management techniques like NoSQL and data lakes.

---

## **Learning Objectives**
By completing this lab, you will:
1. Analyze and normalize a single-table database to reduce redundancy.
2. Design a relational schema with primary and foreign keys.
3. Implement ACID-compliant transactions for data integrity.
4. Apply concurrency control techniques to handle simultaneous transactions.
5. Design and use NoSQL databases for diverse data attributes.
6. Create a high-level architecture for a data lake and lakehouse.

---

## **Lab Activities**

### **Part 1: Analyzing and Normalizing TechCorp’s Existing Table**
- **Task:** Break down the unstructured "TechCorp_Data" table into normalized tables (3NF).
- **Deliverables:**
  - A relational schema with explanations for primary and foreign key design.
  - An Entity-Relationship Diagram (ERD) showing table relationships.
- **Discussion Points:**
  - Benefits of normalization for reducing redundancy and improving data integrity.
  - Trade-offs of normalization and scenarios for denormalization.

---

### **Part 2: Transaction Management with ACID Properties**
- **Scenario:** A customer places an order, triggering multiple updates across tables.
- **Tasks:**
  - Design a transaction scenario that handles:
    - Inserting a new order into the `Orders` table.
    - Adding order items into the `OrderDetails` table.
    - Decreasing stock quantities in the `Products` table.
  - Write SQL code that adheres to ACID principles:
    - **Atomicity:** Ensure all steps succeed or none are applied.
    - **Consistency:** Maintain database integrity.
    - **Isolation:** Ensure independent transaction execution.
    - **Durability:** Save the transaction permanently once completed.

---

### **Part 3: Concurrency Control in a Multi-User Environment**
- **Scenario:** Two customers place orders simultaneously for a product with limited stock.
- **Tasks:**
  - Simulate concurrent transactions that could lead to lost updates or dirty reads.
  - Implement row-level locking to prevent conflicts:
    - Ensure one transaction completes before the other proceeds.
  - Write a SQL script demonstrating row-level locking in action.

---

### **Part 4: Document Stores with MongoDB**
- **Objective:** Design and manage a flexible product catalog using MongoDB.
- **Tasks:**
  1. Set up a MongoDB database named `ProductCatalog`.
  2. Create a collection `Products` with tailored documents for different product types:
     - Electronics: Include specifications like processor, RAM, etc.
     - Clothing: Attributes like size, color, and material.
     - Books: Fields like title, author, genre, and ISBN.
  3. Insert sample product documents showcasing schema flexibility.

---

### **Part 5: Data Lakes and Lakehouses**
- **Objective:** Design a scalable analytics platform for TechCorp.
- **Tasks:**
  - Create a high-level architecture diagram for a data lake.
  - Outline workflows for data ingestion, storage, and processing.

---

## **Submission**
- **Deliverables:**
  - Normalized relational schema with explanations and ERD.
  - Transaction management SQL code.
  - Concurrency control SQL script.
  - MongoDB product catalog with sample documents.
  - Data lake architecture diagram and workflow description.
- **Due Date:** **Tuesday, 19 November 2024**

---

## **Summary**
This lab offers hands-on experience in database normalization, transaction management, concurrency control, NoSQL databases, and data lakes. By the end, you will have a robust understanding of both relational and NoSQL databases, along with scalable analytics solutions, preparing you for real-world data management challenges.
