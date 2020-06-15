defmodule LogLady.Lorem do
  @moduledoc"""
  The Lorem context
  """

  alias LogLady.Lorem.Text
  
  def get_text do
    Text.all
  end
end
