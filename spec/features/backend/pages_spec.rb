# frozen_string_literal: true

require "rails_helper"

RSpec.feature "Pages", type: :feature do
  before { stub_authorization! }

  let(:help_text) { Archangel.t(:help) }

  describe "listing" do
    it "has Help icon that opens help" do
      visit archangel.backend_pages_path

      expect(page).to have_link(help_text, href: "#")

      click_link(help_text)

      expect(page).to have_content("TODO")
    end
  end

  describe "new" do
    it "has Help icon that opens help" do
      visit archangel.new_backend_page_path

      expect(page).to have_link(help_text, href: "#")

      click_link(help_text)

      expect(page).to have_content("TODO")
    end
  end

  describe "show" do
    let(:resource) { create(:page) }

    it "has Help icon that opens help" do
      visit archangel.backend_page_path(resource)

      expect(page).to have_link(help_text, href: "#")

      click_link(help_text)

      expect(page).to have_content("TODO")
    end
  end

  describe "edit" do
    let(:resource) { create(:page) }

    it "has Help icon that opens help" do
      visit archangel.edit_backend_page_path(resource)

      expect(page).to have_link(help_text, href: "#")

      click_link(help_text)

      expect(page).to have_content("TODO")
    end
  end
end
