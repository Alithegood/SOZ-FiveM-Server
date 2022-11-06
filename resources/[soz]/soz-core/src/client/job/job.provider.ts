import { JobBlips, JobMenu } from '../../config/job';
import { Once, OnceStep, OnEvent, OnNuiEvent } from '../../core/decorators/event';
import { Inject } from '../../core/decorators/injectable';
import { Provider } from '../../core/decorators/provider';
import { ClientEvent, NuiEvent, ServerEvent } from '../../shared/event';
import { JobType } from '../../shared/job';
import { Ok } from '../../shared/result';
import { BlipFactory } from '../blip';
import { ItemService } from '../item/item.service';
import { NuiMenu } from '../nui/nui.menu';
import { PlayerService } from '../player/player.service';
import { TargetFactory } from '../target/target.factory';
import { JobPermissionService } from './job.permission.service';

@Provider()
export class JobProvider {
    @Inject(BlipFactory)
    private blipFactory: BlipFactory;

    @Inject(TargetFactory)
    private targetFactory: TargetFactory;

    @Inject(PlayerService)
    private playerService: PlayerService;

    @Inject(JobPermissionService)
    private jobPermissionService: JobPermissionService;

    @Inject(NuiMenu)
    private nuiMenu: NuiMenu;

    @Inject(ItemService)
    private itemService: ItemService;

    @Once(OnceStep.PlayerLoaded)
    public async onStart() {
        for (const [job, blips] of Object.entries(JobBlips)) {
            for (const blipIndex in blips) {
                const blip = blips[blipIndex];
                this.blipFactory.create(`job_${job}_${blipIndex}`, blip);
            }
        }
    }

    @OnEvent(ClientEvent.JOB_OPEN_MENU)
    public async toggleJobMenu(job: JobType) {
        const menuType = JobMenu[job];

        if (!menuType) {
            return;
        }

        if (this.nuiMenu.getOpened() === menuType) {
            this.nuiMenu.closeMenu();
        } else {
            this.nuiMenu.openMenu(menuType);
        }
    }

    @OnNuiEvent(NuiEvent.JobPlaceProps)
    public async onPlaceProps(props: { item: string; props: string }) {
        TriggerServerEvent(ServerEvent.JOBS_PLACE_PROPS, props.item, props.props);
        return Ok(true);
    }
}
