class BaseSerializer < ActiveModel::Serializer
  def created_at
    format_date object&.created_at, '%B %d, %Y %H:%M:%S'
  end

  def updated_at
    format_date object&.updated_at, '%B %d, %Y %H:%M:%S'
  end

  private

  def format_date(date_time, format)
    date_time&.strftime format
  end
end
