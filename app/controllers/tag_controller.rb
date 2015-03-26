class TagController < ApplicationController
  def show
  @tag = Tag.find(params[:id])
  @people = Person.tagged_with(@tag.name)

  end
end
