# ## Schema Information
#
# Table name: `wishes`
#
# ### Columns
#
# Name              | Type               | Attributes
# ----------------- | ------------------ | ---------------------------
# **`id`**          | `integer`          | `not null, primary key`
# **`done`**        | `boolean`          | `default("0"), not null`
# **`content`**     | `text(65535)`      | `not null`
# **`created_at`**  | `datetime`         | `not null`
# **`updated_at`**  | `datetime`         | `not null`
#

class Wish < ActiveRecord::Base
  validates :content, presence: true
end
