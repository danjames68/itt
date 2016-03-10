require 'rails_helper'

describe "Viewing the list of villas" do
  
  it "lists the villas" do
    villa1 = Villa.create(name: "Dimora",
                         strapline: "Great house in Chianti",
                         sleeps_min: 8,
                         sleeps_max: 12,
                         description: "Big house, nice pool, great views.",
                         low_season_euro: 1200,
                         mid_season_euro: 1500,
                         high_season_euro: 3000) 

    villa2 = Villa.create(name: "Pinolo",
                         strapline: "little flat in Chianti",
                         sleeps_min: 8,
                         sleeps_max: 12,
                         description: "Big house, nice pool, great views.",
                         low_season_euro: 1200,
                         mid_season_euro: 1500,
                         high_season_euro: 3000) 

    villa3 = Villa.create(name: "Valdera",
                         strapline: "Gluxury",
                         sleeps_min: 8,
                         sleeps_max: 12,
                         description: "Big house, nice pool, great views.",
                         low_season_euro: 1200,
                         mid_season_euro: 1500,
                         high_season_euro: 3000)
    
    visit villas_url
    
    expect(page).to have_text("Our Villas") 
    expect(page).to have_text(villa1.name)
    expect(page).to have_text(villa2.name)
    expect(page).to have_text(villa3.name)
    
    expect(page).to have_text(villa1.strapline)
    expect(page).to have_text("8")
    expect(page).to have_text("12")
    expect(page).to have_text(villa1.description[0..10])
    expect(page).to have_text("1200")
    expect(page).to have_text("1500")
    expect(page).to have_text("3000")
    
  end 
  
end