class BookDetail < ApplicationRecord
	validates_presence_of :book_title,
	:one_author_name,
	:one_designation,
	:one_organization,
	:publisher_name,
	:publisher_address,
	:isbn,
	:one_publication,
	:edition_number,
	:reprint_year
end