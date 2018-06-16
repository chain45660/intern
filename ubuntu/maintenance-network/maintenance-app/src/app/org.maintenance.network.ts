import {Asset} from './org.hyperledger.composer.system';
import {Participant} from './org.hyperledger.composer.system';
import {Transaction} from './org.hyperledger.composer.system';
import {Event} from './org.hyperledger.composer.system';
// export namespace org.maintenance.network{
   export class MachineDiagn extends Asset {
      assetId: string;
      toolCondition: number;
      misalignment: number;
      unbalance: number;
   }
   export class MachineProgn extends Asset {
      assetId: string;
      toolWear: number;
   }
   export class assetReport extends Transaction {
      assetDiagn: MachineDiagn;
      assetProgn: MachineProgn;
      newToolCondition: number;
      newMisalignment: number;
      newUnbalance: number;
   }
// }
