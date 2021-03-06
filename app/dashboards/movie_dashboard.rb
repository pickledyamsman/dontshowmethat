require "administrate/base_dashboard"

class MovieDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    movie_triggers: Field::HasMany,
    id: Field::Number,
    title: Field::String,
    runtime: Field::Number,
    poster_path: Field::String,
    release_date: Field::String,
    release_status: Field::String,
    original_language: Field::String,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    overview: Field::String,
    movie_trigger_id: Field::Number,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :movie_triggers,
    :id,
    :title,
    :runtime,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :movie_triggers,
    :id,
    :title,
    :runtime,
    :poster_path,
    :release_date,
    :release_status,
    :original_language,
    :created_at,
    :updated_at,
    :overview,
    :movie_trigger_id,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :movie_triggers,
    :title,
    :runtime,
    :poster_path,
    :release_date,
    :release_status,
    :original_language,
    :overview,
    :movie_trigger_id,
  ].freeze

  # Overwrite this method to customize how movies are displayed
  # across all pages of the admin dashboard.
  #
  def display_resource(movie)
    "#{movie.title}"
  end
end
