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

defmodule GoogleApi.CloudRun.V1alpha1.Model.EnvVar do
  @moduledoc """
  EnvVar represents an environment variable present in a Container.

  ## Attributes

  *   `name` (*type:* `String.t`, *default:* `nil`) - Name of the environment variable. Must be a C_IDENTIFIER.
  *   `value` (*type:* `String.t`, *default:* `nil`) - (Optional) Variable references $(VAR_NAME) are expanded using the previous defined environment variables in the container and any route environment variables. If a variable cannot be resolved, the reference in the input string will be unchanged. The $(VAR_NAME) syntax can be escaped with a double $$, ie: $$(VAR_NAME). Escaped references will never be expanded, regardless of whether the variable exists or not. Defaults to "".
  *   `valueFrom` (*type:* `GoogleApi.CloudRun.V1alpha1.Model.EnvVarSource.t`, *default:* `nil`) - (Optional) Source for the environment variable's value. Only supports secret_key_ref. Source for the environment variable's value. Cannot be used if value is not empty.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :name => String.t() | nil,
          :value => String.t() | nil,
          :valueFrom => GoogleApi.CloudRun.V1alpha1.Model.EnvVarSource.t() | nil
        }

  field(:name)
  field(:value)
  field(:valueFrom, as: GoogleApi.CloudRun.V1alpha1.Model.EnvVarSource)
end

defimpl Poison.Decoder, for: GoogleApi.CloudRun.V1alpha1.Model.EnvVar do
  def decode(value, options) do
    GoogleApi.CloudRun.V1alpha1.Model.EnvVar.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudRun.V1alpha1.Model.EnvVar do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
