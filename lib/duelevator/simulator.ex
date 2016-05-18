defmodule Duelevator.Simulator do
  def new_game(players: players, elevator_count: elevator_count, floor_count: floor_count) do
    elevators = players
    |> Enum.map(fn(player) ->
      (1..elevator_count)
      |> Enum.map(fn(_) ->
        %Duelevator.Simulator.Elevator{
          id: UUID.uuid4(),
        }
      end)
    end)
    |> List.flatten

    floors = (1..floor_count)
    |> Enum.map(fn(_) ->
      %Duelevator.Simulator.Floor{
        id: UUID.uuid4(),
        npcs: [],
        buttons: [],
      }
    end)

    %Duelevator.Simulator.Game{
      id: UUID.uuid4(),
      current_state: %Duelevator.Simulator.State{
        elevators: elevators,
        floors: floors,
      },
    }
  end
end
