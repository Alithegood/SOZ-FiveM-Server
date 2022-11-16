import { Command } from '../../core/decorators/command';
import { OnEvent } from '../../core/decorators/event';
import { Provider } from '../../core/decorators/provider';
import { ClientEvent } from '../../shared/event';

@Provider()
export class VehicleAirProvider {
    @OnEvent(ClientEvent.BASE_ENTERED_VEHICLE)
    private async onBaseEnteredVehicle(vehicle) {
        const model = GetEntityModel(vehicle);

        if (IsThisModelAHeli(model)) {
            SetHeliTurbulenceScalar(vehicle, 0.0);
        }

        if (IsThisModelAPlane(model)) {
            SetPlaneTurbulenceMultiplier(vehicle, 0.0);
        }
    }

    @Command('soz_vehicle_toggle_vehicle_rappel', {
        description: 'Descendre en rappel',
        keys: [
            {
                mapper: 'keyboard',
                key: 'E',
            },
        ],
    })
    async rappelling() {
        const ped = PlayerPedId();
        const vehicle = GetVehiclePedIsIn(ped, false);

        if (!vehicle) {
            return;
        }

        const isDriver = GetPedInVehicleSeat(vehicle, -1) === ped;
        const isCopilot = GetPedInVehicleSeat(vehicle, 0) === ped;

        if (DoesVehicleAllowRappel(vehicle) && !isDriver && !isCopilot) {
            TaskRappelFromHeli(ped, 0x41200000);
        }
    }
}
