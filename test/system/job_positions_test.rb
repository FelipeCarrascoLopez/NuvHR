require "application_system_test_case"

class JobPositionsTest < ApplicationSystemTestCase
  setup do
    @job_position = job_positions(:one)
  end

  test "visiting the index" do
    visit job_positions_url
    assert_selector "h1", text: "Job Positions"
  end

  test "creating a Job position" do
    visit job_positions_url
    click_on "New Job Position"

    fill_in "Department", with: @job_position.department_id
    fill_in "Title", with: @job_position.title
    click_on "Create Job position"

    assert_text "Job position was successfully created"
    click_on "Back"
  end

  test "updating a Job position" do
    visit job_positions_url
    click_on "Edit", match: :first

    fill_in "Department", with: @job_position.department_id
    fill_in "Title", with: @job_position.title
    click_on "Update Job position"

    assert_text "Job position was successfully updated"
    click_on "Back"
  end

  test "destroying a Job position" do
    visit job_positions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Job position was successfully destroyed"
  end
end
