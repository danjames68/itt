require 'rails_helper'

describe "Viewing the list of villas" do
  it "lists the villas" do
    visit villas_url
    expect(page).to have_text("Our Villas") 
    expect(page).to have_text("Dimora")
    expect(page).to have_text("Podere Mandrie")
    expect(page).to have_text("Valdera")
    
  end 
end