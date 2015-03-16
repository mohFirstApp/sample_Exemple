require 'spec_helper'

describe "LayoutLinksTests" do

  it "devrait trouver une page Accueil à '/'" do
    get '/'
    response.should have_selector('titre', :content => "Accueil")
  end

  it "devrait trouver une page Contact à '/contact'" do
    get '/contact'
    response.should have_selector('titre', :content => "Contact")
  end

  it "devrait trouver une page À Propos  à '/about'" do
    get '/about'
    response.should have_selector('titre', :content => "À Propos")
  end

  it "devrait trouver une page Iade à '/help'" do
    get '/help'
    response.should have_selector('titre', :content => "Aide")

    it "devrait avoir une page d'inscription à '/signup'" do
    get '/signup'
    response.should have_selector('titre', :content => "Inscription")
  end
  end
end
