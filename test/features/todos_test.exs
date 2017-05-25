defmodule Acceptancetesting.TodosTest do
  use Acceptancetesting.ConnCase
  use Hound.Helpers

  hound_session()

  test "Can create new todo", meta do
    navigate_to("http://localhost:4001/todos")

    find_element(:id, "new_todo")
    |> click

    name = "BoJack Horseman"

    find_element(:id, "todo_name")
    |> fill_field(name)

    find_element(:id, "todo_done")
    |> click

    find_element(:tag, "form")
    |> submit_element

    assert(String.contains? visible_page_text(), "Todo created successfully.")
    assert(String.contains? visible_page_text(), name)
  end
end
