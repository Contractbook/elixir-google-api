# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This file is auto generated by the elixir code generator program.
# Do not edit this file manually.

defmodule GoogleApi.WorkflowExecutions.V1beta.Model.StackTraceElement do
  @moduledoc """
  A single stack element (frame) where an error occurred.

  ## Attributes

  *   `position` (*type:* `GoogleApi.WorkflowExecutions.V1beta.Model.Position.t`, *default:* `nil`) - The source position information of the stacktrace element.
  *   `routine` (*type:* `String.t`, *default:* `nil`) - The routine where the error occurred.
  *   `step` (*type:* `String.t`, *default:* `nil`) - The step the error occurred at.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :position => GoogleApi.WorkflowExecutions.V1beta.Model.Position.t() | nil,
          :routine => String.t() | nil,
          :step => String.t() | nil
        }

  field(:position, as: GoogleApi.WorkflowExecutions.V1beta.Model.Position)
  field(:routine)
  field(:step)
end

defimpl Poison.Decoder, for: GoogleApi.WorkflowExecutions.V1beta.Model.StackTraceElement do
  def decode(value, options) do
    GoogleApi.WorkflowExecutions.V1beta.Model.StackTraceElement.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.WorkflowExecutions.V1beta.Model.StackTraceElement do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
