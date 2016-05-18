defmodule Duelevator.SimulatorTest do
  use ExUnit.Case

  test "new_game" do
    game = Duelevator.Simulator.new_game(players: [], elevator_count: 4, floor_count: 4)
    assert %Duelevator.Simulator.Game{
      id: id,
      current_state: %Duelevator.Simulator.State{
        elevators: elevators,
        floors: floors,
      }
    } = game
    assert 4 == Enum.count(floors)
    assert 0 == Enum.count(elevators)
  end
end
