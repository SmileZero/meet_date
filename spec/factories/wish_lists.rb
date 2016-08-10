# ## Schema Information
#
# Table name: `wish_lists`
#
# ### Columns
#
# Name              | Type               | Attributes
# ----------------- | ------------------ | ---------------------------
# **`id`**          | `integer`          | `not null, primary key`
# **`content`**     | `text(65535)`      |
# **`created_at`**  | `datetime`         | `not null`
# **`updated_at`**  | `datetime`         | `not null`
#

FactoryGirl.define do
  factory :wish_list do
    content "MyText"
  end
end
