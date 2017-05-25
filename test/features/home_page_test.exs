defmodule Acceptancetesting.HomePageTest do
  use Acceptancetesting.ConnCase
  use Hound.Helpers

  hound_session()

  test "There is page title", meta do
    navigate_to("http://localhost:4001/")

    assert page_title() == "Hello Acceptancetesting!"
  end

  test "There is some page", meta do
    navigate_to("http://localhost:4001/some_page")

    assert(String.contains? visible_page_text(), "Some cool page!")
  end
end
