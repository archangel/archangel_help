# frozen_string_literal: true

require "rails_helper"

RSpec.feature "Users", type: :feature do
  before { stub_authorization!(profile) }

  let(:profile) { create(:user, :admin) }
  let(:help_text) { Archangel.t(:help) }

  describe "show" do
    it "has Help icon that opens help" do
      visit archangel.backend_site_path

      expect(page).to have_link(help_text, href: "#")

      click_link(help_text)

      expect(page).to have_content("TODO")
    end
  end

  describe "edit" do
    it "has Help icon that opens help" do
      visit archangel.edit_backend_site_path

      expect(page).to have_link(help_text, href: "#")

      click_link(help_text)

      expect(page).to have_content("TODO")
    end
  end
end
