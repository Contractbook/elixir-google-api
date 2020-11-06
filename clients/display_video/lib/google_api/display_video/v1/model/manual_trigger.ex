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

defmodule GoogleApi.DisplayVideo.V1.Model.ManualTrigger do
  @moduledoc """
  A single manual trigger in Display & Video 360 (DV360).

  ## Attributes

  *   `activationDurationMinutes` (*type:* `String.t`, *default:* `nil`) - Required. The maximum duration of each activation in minutes. Must be between 1 and 360 inclusive. After this duration, the trigger will be automatically deactivated.
  *   `advertiserId` (*type:* `String.t`, *default:* `nil`) - Required. Immutable. The unique ID of the advertiser that the manual trigger belongs to.
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - Required. The display name of the manual trigger. Must be UTF-8 encoded with a maximum size of 240 bytes.
  *   `latestActivationTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The timestamp of the trigger's latest activation.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. The resource name of the manual trigger.
  *   `state` (*type:* `String.t`, *default:* `nil`) - Output only. The state of the manual trigger. Will be set to the `INACTIVE` state upon creation.
  *   `triggerId` (*type:* `String.t`, *default:* `nil`) - Output only. The unique ID of the manual trigger.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :activationDurationMinutes => String.t(),
          :advertiserId => String.t(),
          :displayName => String.t(),
          :latestActivationTime => DateTime.t(),
          :name => String.t(),
          :state => String.t(),
          :triggerId => String.t()
        }

  field(:activationDurationMinutes)
  field(:advertiserId)
  field(:displayName)
  field(:latestActivationTime, as: DateTime)
  field(:name)
  field(:state)
  field(:triggerId)
end

defimpl Poison.Decoder, for: GoogleApi.DisplayVideo.V1.Model.ManualTrigger do
  def decode(value, options) do
    GoogleApi.DisplayVideo.V1.Model.ManualTrigger.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DisplayVideo.V1.Model.ManualTrigger do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end