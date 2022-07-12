</div>
<div class="modal-footer">
    <button type="button" class="btn btn-dark close-btn text-info" wire:click.prevent="resertUI()" data-dismiss="modal" > Cerrar </button>

    @if ($selected_id<1)
    <button type="button" wire:click.prevent="Store()" class="btn btn-dark close-modal">
Guardar
    </button>
    @else
    <button type="button" wire:click.prevent="Update()" class="btn btn-dark close-modal>
        Cerrar
            </button>
    @endif
</div>
</div>
</div>
</div>
