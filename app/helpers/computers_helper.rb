module ComputersHelper
  def memories_collection_select
    memory = Memory.all.map { |p| [p.id, "#{p.mark.nombre} #{p.capacidad}"] }

    collection_select :computer, :memory_id, memory, :first, :last
  end

  def microprocessors_collection_select
    microprocessor = Microprocessor.all.map { |p| [p.id, "#{p.modelo} #{p.nombre} #{p.velocidad} #{p.mark.nombre}"] }

    collection_select :computer, :microprocessor_id, microprocessor, :first, :last
  end

  def screens_collection_select
    screen = Screen.all.map { |p| [p.id, "#{p.mark.nombre} #{p.size.pulgadas} #{p.modelo} #{p.type.nombre}  "] }

    collection_select :computer, :screen_id, screen, :first, :last
  end

  def motherboards_collection_select
    motherboard = Motherboard.all.map { |p| [p.id, "#{p.mark.nombre} #{p.modelo} "] }

    collection_select :computer, :motherboard_id, motherboard, :first, :last
  end
  
  def printers_collection_select
    printer = Printer.all.map { |p| [p.id, "#{p.mark.nombre} #{p.modelo} #{p.type.nombre} "] }

    collection_select :computer, :printer_id, printer, :first, :last
  end
  
  def scanners_collection_select
    scanner = Scanner.all.map { |p| [p.id, "#{p.mark.nombre} #{p.modelo} "] }

    collection_select :computer, :scanner_id, scanner, :first, :last
  end

  def system_collection_select
    system = System.all.map { |p| [p.id, "#{p.nombre} #{p.version} "] }

    collection_select :computer, :system_id, system, :first, :last
  end
  
  def disks_collection_select
    disk = Disk.all.map { |p| [p.id, "#{p.mark.nombre} #{p.modelo} #{p.capacidad} #{p.cache}"] }

    collection_select :computer, :disk_id, disk, :first, :last
  end

end
