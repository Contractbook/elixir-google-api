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

defmodule GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1_Trial do
  @moduledoc """
  A message representing a Trial.

  ## Attributes

  *   `clientId` (*type:* `String.t`, *default:* `nil`) - Output only. The identifier of the client that originally requested this trial.
  *   `endTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Time the Trial's status changed to COMPLETED.
  *   `finalMeasurement` (*type:* `GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1_Measurement.t`, *default:* `nil`) - The final Measurement containing the objective value.
  *   `infeasibleReason` (*type:* `String.t`, *default:* `nil`) - Output only. A human readable string describing why the Trial is
      infeasible. This should only be set if trial_infeasible is true.
  *   `measurements` (*type:* `list(GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1_Measurement.t)`, *default:* `nil`) - A list of measurements that are strictly lexicographically
      ordered by their induced tuples (steps, elapsed_time).
      These are used for early stopping computations.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. Name of the trial assigned by the service.
  *   `parameters` (*type:* `list(GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1_Trial_Parameter.t)`, *default:* `nil`) - The parameters of the Trial.
  *   `startTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Time the Trial was started.
  *   `state` (*type:* `String.t`, *default:* `nil`) - The detailed state of a trial.
  *   `trialInfeasible` (*type:* `boolean()`, *default:* `nil`) - Output only. True if the parameters in this trial should not be attempted again.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :clientId => String.t(),
          :endTime => DateTime.t(),
          :finalMeasurement => GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1_Measurement.t(),
          :infeasibleReason => String.t(),
          :measurements =>
            list(GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1_Measurement.t()),
          :name => String.t(),
          :parameters =>
            list(GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1_Trial_Parameter.t()),
          :startTime => DateTime.t(),
          :state => String.t(),
          :trialInfeasible => boolean()
        }

  field(:clientId)
  field(:endTime, as: DateTime)
  field(:finalMeasurement, as: GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1_Measurement)
  field(:infeasibleReason)

  field(:measurements,
    as: GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1_Measurement,
    type: :list
  )

  field(:name)

  field(:parameters,
    as: GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1_Trial_Parameter,
    type: :list
  )

  field(:startTime, as: DateTime)
  field(:state)
  field(:trialInfeasible)
end

defimpl Poison.Decoder, for: GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1_Trial do
  def decode(value, options) do
    GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1_Trial.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1_Trial do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end