import { getDistance, Vector3 } from '@public/shared/polyzone/vector';

import { Injectable } from '../../core/decorators/injectable';
import { emitRpc } from '../../core/rpc';
import { UpwCharger } from '../../shared/fuel';
import { RpcServerEvent } from '../../shared/rpc';

@Injectable()
export class UpwChargerRepository {
    private upwCharger: Record<number, UpwCharger> = {}; // name -> upwCharger

    public async load() {
        this.upwCharger = await emitRpc(RpcServerEvent.REPOSITORY_GET_DATA, 'upwCharger');
    }

    public update(charger: Record<number, UpwCharger>) {
        this.upwCharger = charger;
    }

    public get(): Record<number, UpwCharger> {
        return this.upwCharger;
    }

    public getModel(): number {
        return 2074167371;
    }

    public find(id: number): UpwCharger | undefined {
        return this.upwCharger[id];
    }

    public getClosestCharger(position: Vector3): UpwCharger | null {
        let closestCharger = null;
        let closestDistance = -1;
        Object.values(this.upwCharger).forEach(charger => {
            const distance = getDistance(position, charger.position);
            if (!closestCharger || distance < closestDistance) {
                closestCharger = charger;
                closestDistance = distance;
            }
        });
        return closestCharger;
    }

    public getStationForEntity(entity: number): string | null {
        const position = GetEntityCoords(entity) as Vector3;
        return this.getClosestCharger(position).station || null;
    }
}
