# Miles of Smiles

#### Rails Authentication Independent Project, 07/07/2017

#### By Brian Fan

## Description

Miles of Smiles is the small business site including basic user authentication functionality. There are two different type of user accounts: admin and basic. Admin user can add, edit, delete product info and delete basic user's comment on products. Basic users can view products info and leave comment on the product.

## Core Functionality
*Authentication and Authorization*
- [x] The company has decided their site requires two types of accounts: basic user accounts, and administrator accounts.
- [x] Basic users must be able to leave reviews on products/services (more info below).
- [x] Only administrators will have the option to add, edit, or delete products/services, and delete user reviews.
*Landing Page*
- [x] The site needs a visually-appealing landing page with a welcome message, and basic information about the company.
- [x] It should include navigation options for users to make their way around the site (including the login page) too.
*Products/Services Page*
- [x] It also needs an area where users may view all products or services they offer.
- [x] Admins must have an option to add new products/services.
- [x] At the very least, each product/service should include a name, description, and price. But you're encouraged to add more properties specific to the product/service your site offers.
*Detail Page*
- [x] All users should be able to click an individual product's entry to view that particular product or service's detail page.
- [x] The detail page should include all product/service details, including its image.
- [x] Authenticated basic users should have an option to leave a comment or review about a product.
- [x] Administrators should have the option to edit or delete any service or product.
- [x] Administrators should also have the option to delete inappropriate user reviews or comments.


### Further Exploration
- [x] Custom CSS styling
- [x] Add validation to product cost
- [x] User can favorite the products

## Prerequisites & Installation

* install rails gem,  [instructions](https://www.learnhowtoprogram.com/rails/ruby-on-rails-basics/rails-setup-and-structure).
* install Postgres followed by the [instructions](https://www.learnhowtoprogram.com/ruby/ruby-database-basics/installing-postgres-7fb0cff7-a0f5-4b61-a0db-8a928b9f67ef).
* `git clone https://github.com/txbluebee/commerce_site`
* `cd commerce_site`
* `bundle install`
* Open new tab in the terminal (Alt +T) and run the following command
* `postgres`
* `rails db:create`
* `rails db:migrate db:test:prepare`


## Running / Development

* `rails server`
* Visit your app at [http://localhost:3000](http://localhost:3000).

## Technologies Used

_HTML_

_SCSS_

_Bootstrap_

_Ruby_

_Ruby on Rails_

### License

Copyright (c) 2017 Brian Fan
The website is licensed under the MIT license.
