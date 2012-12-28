class Tagging < ActiveRecord::Base
  attr_accessible :article_id, :tag_id
  belongs_to :article
  belongs_to :tag

  tags = article.taggings.collect{|tagging| tagging.tag}
end
