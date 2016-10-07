# ## Schema Information
#
# Table name: `appointments`
#
# ### Columns
#
# Name              | Type               | Attributes
# ----------------- | ------------------ | ---------------------------
# **`id`**          | `integer`          | `not null, primary key`
# **`time`**        | `datetime`         |
# **`created_at`**  | `datetime`         | `not null`
# **`updated_at`**  | `datetime`         | `not null`
#

class Appointment < ActiveRecord::Base
  scope :available, ->(now = nil) do
    now ||= Time.current
    where(arel_table[:time].gteq(now))
  end
end
