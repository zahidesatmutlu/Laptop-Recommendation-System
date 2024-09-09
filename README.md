# Laptop Recommendation System

A simple Laptop Recommendation System built using Prolog, designed to help users select the best laptop based on their preferences.


![image](https://github.com/user-attachments/assets/94b5a20d-a858-4f0c-8f9d-60944a31df0d)

## Overview

This project is a knowledge-based system that recommends laptops according to user preferences such as budget, brand, performance, and purpose. By answering a set of questions, the system will return the most suitable laptop option.

The project demonstrates the use of Prolog for building expert systems and logic programming to solve real-world problems like choosing the right laptop based on specific criteria.

## Features
- Laptop recommendations based on user inputs.
- Supports various laptop brands, models, and configurations.
- Customizable logic for different criteria like budget, performance, portability, and more.

## Requirements
- SWI-Prolog (or any Prolog interpreter)
- Basic knowledge of Prolog

## Installation

1. Clone the repository:
    ```bash
    git clone https://github.com/zahidesatmutlu/Laptop-Recommendation-System.git
    cd Laptop-Recommendation-System
    ```

2. Install Prolog (if not already installed). For example, on Ubuntu:
    ```bash
    sudo apt-get install swi-prolog
    ```

3. Open the project in Prolog:
    ```bash
    swipl laptop_recommender.pl
    ```

## Usage

Run the system by loading the Prolog file and starting the recommendation process:

```bash
?- consult('laptop_recommender.pl').
?- start.
```

The system will ask a series of questions related to your needs (e.g., budget, performance). Based on your answers, it will suggest the best laptop options.

## Contributing

Feel free to fork this repository and submit pull requests. Contributions are always welcome!
