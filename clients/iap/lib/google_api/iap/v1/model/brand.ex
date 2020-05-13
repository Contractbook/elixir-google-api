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

defmodule GoogleApi.IAP.V1.Model.Brand do
  @moduledoc """
  OAuth brand data.
  NOTE: Only contains a portion of the data that describes a brand.

  ## Attributes

  *   `applicationTitle` (*type:* `String.t`, *default:* `nil`) - Application name displayed on OAuth consent screen.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. Identifier of the brand.
      NOTE: GCP project number achieves the same brand identification purpose as
      only one brand per project can be created.
  *   `orgInternalOnly` (*type:* `boolean()`, *default:* `nil`) - Output only. Whether the brand is only intended for usage inside the
      G Suite organization only.
  *   `supportEmail` (*type:* `String.t`, *default:* `nil`) - Support email displayed on the OAuth consent screen.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :applicationTitle => String.t(),
          :name => String.t(),
          :orgInternalOnly => boolean(),
          :supportEmail => String.t()
        }

  field(:applicationTitle)
  field(:name)
  field(:orgInternalOnly)
  field(:supportEmail)
end

defimpl Poison.Decoder, for: GoogleApi.IAP.V1.Model.Brand do
  def decode(value, options) do
    GoogleApi.IAP.V1.Model.Brand.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.IAP.V1.Model.Brand do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
