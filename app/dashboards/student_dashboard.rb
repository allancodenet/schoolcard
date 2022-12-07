require "administrate/base_dashboard"

class StudentDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    id: Field::Number,
    adm_no: Field::String,
    gender: Field::Select.with_options( include_blank:true, collection: ->(field) { field.resource.class.send(field.attribute.to_s.pluralize).keys }),
    dob: Field::Date,
    index_no: Field::Number,
    kcpe_yr: Field::Number,
    other_names: Field::String,
    photo: Field::ActiveStorage,
    stream: Field::BelongsTo,
    substream: Field::BelongsTo,
    school: Field::BelongsTo,
    surname: Field::String,
    upi: Field::String,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = %i[
    photo
    adm_no
    surname
    index_no
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = %i[
    id
    adm_no
    dob
    index_no
    kcpe_yr
    other_names
    photo
    stream
    substream
    surname
    upi
    created_at
    updated_at
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = %i[
    school
    stream
    substream
    photo
    adm_no
    gender
    dob
    index_no
    kcpe_yr
    other_names
    surname
    upi
  ].freeze

  # COLLECTION_FILTERS
  # a hash that defines filters that can be used while searching via the search
  # field of the dashboard.
  #
  # For example to add an option to search for open resources by typing "open:"
  # in the search field:
  #
  #   COLLECTION_FILTERS = {
  #     open: ->(resources) { resources.where(open: true) }
  #   }.freeze
  COLLECTION_FILTERS = {}.freeze

  # Overwrite this method to customize how students are displayed
  # across all pages of the admin dashboard.
  #
  def display_resource(student)
    "#{student.name}"
  end
  
end
