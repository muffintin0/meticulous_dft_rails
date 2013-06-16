# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130616155544) do

  create_table "gsfcjob", :force => true do |t|
    t.decimal  "alpha_homo",                               :precision => 10, :scale => 5, :null => false
    t.decimal  "alpha_lumo",                               :precision => 10, :scale => 5, :null => false
    t.string   "alpha_orbital",           :limit => 20000,                                :null => false
    t.decimal  "beta_homo",                                :precision => 10, :scale => 5, :null => false
    t.decimal  "beta_lumo",                                :precision => 10, :scale => 5, :null => false
    t.string   "beta_orbital",            :limit => 20000,                                :null => false
    t.string   "cluster",                 :limit => 10,                                   :null => false
    t.datetime "created"
    t.string   "detailed_force",          :limit => 5000,                                 :null => false
    t.decimal  "scfe_energy",                              :precision => 10, :scale => 5, :null => false
    t.decimal  "total_force",                              :precision => 10, :scale => 5, :null => false
    t.string   "geometry",                :limit => 5000,                                 :null => false
    t.string   "input_params",            :limit => 5000,                                 :null => false
    t.string   "molecule",                :limit => 50,                                   :null => false
    t.string   "relative_path",           :limit => 500,                                  :null => false
    t.string   "site_type",                                                               :null => false
    t.integer  "spin",                                                                    :null => false
    t.string   "start_geometry",          :limit => 5000,                                 :null => false
    t.string   "unique_name",             :limit => 100,                                  :null => false
    t.decimal  "unrestricted_spin_guess",                  :precision => 6,  :scale => 3, :null => false
    t.decimal  "unrestricted_spin_real",                   :precision => 6,  :scale => 3, :null => false
    t.datetime "updated"
    t.integer  "version"
  end

  create_table "gsfcjob_step", :force => true do |t|
    t.decimal "alpha_homo",                               :precision => 10, :scale => 5, :null => false
    t.decimal "alpha_lumo",                               :precision => 10, :scale => 5, :null => false
    t.string  "alpha_orbital",           :limit => 20000,                                :null => false
    t.decimal "beta_homo",                                :precision => 10, :scale => 5, :null => false
    t.decimal "beta_lumo",                                :precision => 10, :scale => 5, :null => false
    t.string  "beta_orbital",            :limit => 20000,                                :null => false
    t.string  "detailed_force",          :limit => 5000,                                 :null => false
    t.decimal "scfe_energy",                              :precision => 10, :scale => 5, :null => false
    t.decimal "total_force",                              :precision => 10, :scale => 5, :null => false
    t.string  "geometry",                :limit => 5000,                                 :null => false
    t.string  "relative_path",           :limit => 500,                                  :null => false
    t.integer "step",                                                                    :null => false
    t.string  "unique_name",             :limit => 100,                                  :null => false
    t.decimal "unrestricted_spin_guess",                  :precision => 6,  :scale => 3, :null => false
    t.decimal "unrestricted_spin_real",                   :precision => 6,  :scale => 3, :null => false
    t.integer "version"
    t.integer "gsfc_job",                :limit => 8
  end

  add_index "gsfcjob_step", ["gsfc_job"], :name => "FK46ABC7B7AC5F3A3E"

  create_table "gsfcoptimization_process", :force => true do |t|
    t.string  "alphahomos",      :limit => 10000,      :null => false
    t.string  "alphalumos",      :limit => 10000,      :null => false
    t.string  "betahomos",       :limit => 10000,      :null => false
    t.string  "betalumos",       :limit => 10000,      :null => false
    t.binary  "detailed_forces", :limit => 2147483647, :null => false
    t.string  "scfe_energies",   :limit => 10000,      :null => false
    t.string  "total_forces",    :limit => 10000,      :null => false
    t.binary  "geometries",      :limit => 2147483647, :null => false
    t.string  "unique_name",     :limit => 100,        :null => false
    t.integer "version"
    t.integer "gsfc_job",        :limit => 8
  end

  add_index "gsfcoptimization_process", ["gsfc_job"], :name => "FK55EF39C6AC5F3A3E"

  create_table "gsfcstored_files", :force => true do |t|
    t.string  "calculation_type", :limit => 10,  :null => false
    t.string  "convergence",      :limit => 10,  :null => false
    t.integer "file_size",        :limit => 8,   :null => false
    t.string  "file_type",        :limit => 20,  :null => false
    t.string  "relative_path",    :limit => 500, :null => false
    t.string  "unique_name",      :limit => 100, :null => false
    t.integer "version"
    t.integer "gsfc_job",         :limit => 8
  end

  add_index "gsfcstored_files", ["gsfc_job"], :name => "FK86BB9404AC5F3A3E"

  create_table "gsncjob", :force => true do |t|
    t.decimal "alpha_homo",                               :precision => 10, :scale => 5, :null => false
    t.decimal "alpha_lumo",                               :precision => 10, :scale => 5, :null => false
    t.string  "alpha_orbital",           :limit => 20000,                                :null => false
    t.decimal "beta_homo",                                :precision => 10, :scale => 5, :null => false
    t.decimal "beta_lumo",                                :precision => 10, :scale => 5, :null => false
    t.string  "beta_orbital",            :limit => 20000,                                :null => false
    t.string  "cluster",                 :limit => 10,                                   :null => false
    t.string  "detailed_force",          :limit => 5000,                                 :null => false
    t.decimal "scfe_energy",                              :precision => 10, :scale => 5, :null => false
    t.decimal "total_force",                              :precision => 10, :scale => 5
    t.string  "geometry",                :limit => 5000,                                 :null => false
    t.string  "input_params",            :limit => 5000,                                 :null => false
    t.string  "molecule",                :limit => 50,                                   :null => false
    t.string  "relative_path",           :limit => 500,                                  :null => false
    t.string  "site_type",                                                               :null => false
    t.integer "spin",                                                                    :null => false
    t.string  "start_geometry",          :limit => 5000,                                 :null => false
    t.string  "unique_name",             :limit => 100,                                  :null => false
    t.decimal "unrestricted_spin_guess",                  :precision => 6,  :scale => 3, :null => false
    t.decimal "unrestricted_spin_real",                   :precision => 6,  :scale => 3, :null => false
    t.integer "version"
    t.decimal "enthalpy",                                 :precision => 10, :scale => 5, :null => false
    t.decimal "gibbs_energy",                             :precision => 10, :scale => 5, :null => false
    t.decimal "internal_energy",                          :precision => 10, :scale => 5, :null => false
    t.decimal "zpe",                                      :precision => 8,  :scale => 3, :null => false
  end

  create_table "gsncjob_step", :force => true do |t|
    t.decimal "alpha_homo",                               :precision => 10, :scale => 5, :null => false
    t.decimal "alpha_lumo",                               :precision => 10, :scale => 5, :null => false
    t.string  "alpha_orbital",           :limit => 20000,                                :null => false
    t.decimal "beta_homo",                                :precision => 10, :scale => 5, :null => false
    t.decimal "beta_lumo",                                :precision => 10, :scale => 5, :null => false
    t.string  "beta_orbital",            :limit => 20000,                                :null => false
    t.string  "detailed_force",          :limit => 5000,                                 :null => false
    t.decimal "scfe_energy",                              :precision => 10, :scale => 5, :null => false
    t.decimal "total_force",                              :precision => 10, :scale => 5
    t.string  "geometry",                :limit => 5000,                                 :null => false
    t.string  "relative_path",           :limit => 500,                                  :null => false
    t.integer "step",                                                                    :null => false
    t.string  "unique_name",             :limit => 100,                                  :null => false
    t.decimal "unrestricted_spin_guess",                  :precision => 6,  :scale => 3, :null => false
    t.decimal "unrestricted_spin_real",                   :precision => 6,  :scale => 3, :null => false
    t.integer "version"
    t.integer "gsnc_job",                :limit => 8
  end

  add_index "gsncjob_step", ["gsnc_job"], :name => "FKE8F750AFBA76BB3E"

  create_table "gsncjobirproperty", :force => true do |t|
    t.decimal "heat_capacity",                         :precision => 8, :scale => 3, :null => false
    t.decimal "gibbs_energy",                          :precision => 8, :scale => 3, :null => false
    t.decimal "enthalpy",                              :precision => 8, :scale => 3, :null => false
    t.decimal "entrophy",                              :precision => 8, :scale => 3, :null => false
    t.decimal "temperature",                           :precision => 8, :scale => 3, :null => false
    t.decimal "internal_energy",                       :precision => 8, :scale => 3, :null => false
    t.string  "freq_numbers",    :limit => 20000,                                    :null => false
    t.string  "intensities",     :limit => 20000,                                    :null => false
    t.binary  "normal_modes",    :limit => 2147483647,                               :null => false
    t.string  "unique_name",     :limit => 100,                                      :null => false
    t.integer "version"
    t.integer "gsnc_job",        :limit => 8
  end

  add_index "gsncjobirproperty", ["gsnc_job"], :name => "FKD326237ABA76BB3E"

  create_table "gsncoptimization_process", :force => true do |t|
    t.string  "alphahomos",      :limit => 10000,      :null => false
    t.string  "alphalumos",      :limit => 10000,      :null => false
    t.string  "betahomos",       :limit => 10000,      :null => false
    t.string  "betalumos",       :limit => 10000,      :null => false
    t.binary  "detailed_forces", :limit => 2147483647, :null => false
    t.string  "scfe_energies",   :limit => 10000,      :null => false
    t.string  "total_forces",    :limit => 10000,      :null => false
    t.binary  "geometries",      :limit => 2147483647, :null => false
    t.string  "unique_name",     :limit => 100,        :null => false
    t.integer "version"
    t.integer "gsnc_job",        :limit => 8
  end

  add_index "gsncoptimization_process", ["gsnc_job"], :name => "FK8A1D0EBEBA76BB3E"

  create_table "gsncstored_files", :force => true do |t|
    t.string  "calculation_type", :limit => 10,  :null => false
    t.string  "convergence",      :limit => 10,  :null => false
    t.integer "file_size",        :limit => 8,   :null => false
    t.string  "file_type",        :limit => 20,  :null => false
    t.string  "relative_path",    :limit => 500, :null => false
    t.string  "unique_name",      :limit => 100, :null => false
    t.integer "version"
    t.integer "gsnc_job",         :limit => 8
  end

  add_index "gsncstored_files", ["gsnc_job"], :name => "FK95A9E0FCBA76BB3E"

  create_table "hibernate_sequences", :id => false, :force => true do |t|
    t.string  "sequence_name"
    t.integer "sequence_next_hi_value"
  end

  create_table "job_resource", :force => true do |t|
    t.integer "cpus",                                                     :null => false
    t.integer "memory",                                                   :null => false
    t.decimal "run_time",                   :precision => 6, :scale => 1, :null => false
    t.string  "unique_name", :limit => 100,                               :null => false
    t.integer "version"
  end

  create_table "tsfcjob", :force => true do |t|
    t.decimal "alpha_homo",                               :precision => 10, :scale => 5, :null => false
    t.decimal "alpha_lumo",                               :precision => 10, :scale => 5, :null => false
    t.string  "alpha_orbital",           :limit => 20000,                                :null => false
    t.decimal "beta_homo",                                :precision => 10, :scale => 5, :null => false
    t.decimal "beta_lumo",                                :precision => 10, :scale => 5, :null => false
    t.string  "beta_orbital",            :limit => 20000,                                :null => false
    t.string  "cluster",                 :limit => 10,                                   :null => false
    t.string  "detailed_force",          :limit => 5000,                                 :null => false
    t.decimal "scfe_energy",                              :precision => 10, :scale => 5, :null => false
    t.decimal "total_force",                              :precision => 10, :scale => 5
    t.string  "geometry",                :limit => 5000,                                 :null => false
    t.string  "input_params",            :limit => 5000,                                 :null => false
    t.string  "molecule",                :limit => 50,                                   :null => false
    t.string  "relative_path",           :limit => 500,                                  :null => false
    t.string  "site_type",                                                               :null => false
    t.integer "spin",                                                                    :null => false
    t.string  "start_geometry",          :limit => 5000,                                 :null => false
    t.string  "unique_name",             :limit => 100,                                  :null => false
    t.decimal "unrestricted_spin_guess",                  :precision => 6,  :scale => 3, :null => false
    t.decimal "unrestricted_spin_real",                   :precision => 6,  :scale => 3, :null => false
    t.integer "version"
    t.decimal "enthalpy",                                 :precision => 10, :scale => 5, :null => false
    t.decimal "gibbs_energy",                             :precision => 10, :scale => 5, :null => false
    t.decimal "internal_energy",                          :precision => 10, :scale => 5, :null => false
    t.decimal "zpe",                                      :precision => 8,  :scale => 3, :null => false
  end

  create_table "tsfcjob_step", :force => true do |t|
    t.decimal "alpha_homo",                               :precision => 10, :scale => 5, :null => false
    t.decimal "alpha_lumo",                               :precision => 10, :scale => 5, :null => false
    t.string  "alpha_orbital",           :limit => 20000,                                :null => false
    t.decimal "beta_homo",                                :precision => 10, :scale => 5, :null => false
    t.decimal "beta_lumo",                                :precision => 10, :scale => 5, :null => false
    t.string  "beta_orbital",            :limit => 20000,                                :null => false
    t.string  "detailed_force",          :limit => 5000,                                 :null => false
    t.decimal "scfe_energy",                              :precision => 10, :scale => 5, :null => false
    t.decimal "total_force",                              :precision => 10, :scale => 5
    t.string  "geometry",                :limit => 5000,                                 :null => false
    t.string  "relative_path",           :limit => 500,                                  :null => false
    t.integer "step",                                                                    :null => false
    t.string  "unique_name",             :limit => 100,                                  :null => false
    t.decimal "unrestricted_spin_guess",                  :precision => 6,  :scale => 3, :null => false
    t.decimal "unrestricted_spin_real",                   :precision => 6,  :scale => 3, :null => false
    t.integer "version"
    t.integer "tsfc_job",                :limit => 8
  end

  add_index "tsfcjob_step", ["tsfc_job"], :name => "FKAAB12D8AA27F83DE"

  create_table "tsfcjobirproperty", :force => true do |t|
    t.decimal "heat_capacity",                         :precision => 8, :scale => 3, :null => false
    t.decimal "gibbs_energy",                          :precision => 8, :scale => 3, :null => false
    t.decimal "enthalpy",                              :precision => 8, :scale => 3, :null => false
    t.decimal "entrophy",                              :precision => 8, :scale => 3, :null => false
    t.decimal "temperature",                           :precision => 8, :scale => 3, :null => false
    t.decimal "internal_energy",                       :precision => 8, :scale => 3, :null => false
    t.string  "freq_numbers",    :limit => 20000,                                    :null => false
    t.string  "intensities",     :limit => 20000,                                    :null => false
    t.binary  "normal_modes",    :limit => 2147483647,                               :null => false
    t.string  "unique_name",     :limit => 100,                                      :null => false
    t.integer "version"
    t.integer "tsfc_job",        :limit => 8
  end

  add_index "tsfcjobirproperty", ["tsfc_job"], :name => "FK1CEB177FA27F83DE"

  create_table "tsfcoptimization_process", :force => true do |t|
    t.string  "alphahomos",      :limit => 10000,      :null => false
    t.string  "alphalumos",      :limit => 10000,      :null => false
    t.string  "betahomos",       :limit => 10000,      :null => false
    t.string  "betalumos",       :limit => 10000,      :null => false
    t.binary  "detailed_forces", :limit => 2147483647, :null => false
    t.string  "scfe_energies",   :limit => 10000,      :null => false
    t.string  "total_forces",    :limit => 10000,      :null => false
    t.binary  "geometries",      :limit => 2147483647, :null => false
    t.string  "unique_name",     :limit => 100,        :null => false
    t.integer "version"
    t.integer "tsfc_job",        :limit => 8
  end

  add_index "tsfcoptimization_process", ["tsfc_job"], :name => "FK22037B19A27F83DE"

  create_table "tsfcstored_files", :force => true do |t|
    t.string  "calculation_type", :limit => 10,  :null => false
    t.string  "convergence",      :limit => 10,  :null => false
    t.integer "file_size",        :limit => 8,   :null => false
    t.string  "file_type",        :limit => 20,  :null => false
    t.string  "relative_path",    :limit => 500, :null => false
    t.string  "unique_name",      :limit => 100, :null => false
    t.integer "version"
    t.integer "tsfc_job",         :limit => 8
  end

  add_index "tsfcstored_files", ["tsfc_job"], :name => "FKFB23D857A27F83DE"

  create_table "tsncjob", :force => true do |t|
    t.decimal "alpha_homo",                               :precision => 10, :scale => 5, :null => false
    t.decimal "alpha_lumo",                               :precision => 10, :scale => 5, :null => false
    t.string  "alpha_orbital",           :limit => 20000,                                :null => false
    t.decimal "beta_homo",                                :precision => 10, :scale => 5, :null => false
    t.decimal "beta_lumo",                                :precision => 10, :scale => 5, :null => false
    t.string  "beta_orbital",            :limit => 20000,                                :null => false
    t.string  "cluster",                 :limit => 10,                                   :null => false
    t.string  "detailed_force",          :limit => 5000,                                 :null => false
    t.decimal "scfe_energy",                              :precision => 10, :scale => 5, :null => false
    t.decimal "total_force",                              :precision => 10, :scale => 5
    t.string  "geometry",                :limit => 5000,                                 :null => false
    t.string  "input_params",            :limit => 5000,                                 :null => false
    t.string  "molecule",                :limit => 50,                                   :null => false
    t.string  "relative_path",           :limit => 500,                                  :null => false
    t.string  "site_type",                                                               :null => false
    t.integer "spin",                                                                    :null => false
    t.string  "start_geometry",          :limit => 5000,                                 :null => false
    t.string  "unique_name",             :limit => 100,                                  :null => false
    t.decimal "unrestricted_spin_guess",                  :precision => 6,  :scale => 3, :null => false
    t.decimal "unrestricted_spin_real",                   :precision => 6,  :scale => 3, :null => false
    t.integer "version"
    t.decimal "enthalpy",                                 :precision => 10, :scale => 5, :null => false
    t.decimal "gibbs_energy",                             :precision => 10, :scale => 5, :null => false
    t.decimal "internal_energy",                          :precision => 10, :scale => 5, :null => false
    t.decimal "zpe",                                      :precision => 8,  :scale => 3, :null => false
  end

  create_table "tsncjob_step", :force => true do |t|
    t.decimal "alpha_homo",                               :precision => 10, :scale => 5, :null => false
    t.decimal "alpha_lumo",                               :precision => 10, :scale => 5, :null => false
    t.string  "alpha_orbital",           :limit => 20000,                                :null => false
    t.decimal "beta_homo",                                :precision => 10, :scale => 5, :null => false
    t.decimal "beta_lumo",                                :precision => 10, :scale => 5, :null => false
    t.string  "beta_orbital",            :limit => 20000,                                :null => false
    t.string  "detailed_force",          :limit => 5000,                                 :null => false
    t.decimal "scfe_energy",                              :precision => 10, :scale => 5, :null => false
    t.decimal "total_force",                              :precision => 10, :scale => 5
    t.string  "geometry",                :limit => 5000,                                 :null => false
    t.string  "relative_path",           :limit => 500,                                  :null => false
    t.integer "step",                                                                    :null => false
    t.string  "unique_name",             :limit => 100,                                  :null => false
    t.decimal "unrestricted_spin_guess",                  :precision => 6,  :scale => 3, :null => false
    t.decimal "unrestricted_spin_real",                   :precision => 6,  :scale => 3, :null => false
    t.integer "version"
    t.integer "tsnc_job",                :limit => 8
  end

  add_index "tsncjob_step", ["tsnc_job"], :name => "FK4CFCB682B09704DE"

  create_table "tsncjobirproperty", :force => true do |t|
    t.decimal "heat_capacity",                         :precision => 8, :scale => 3, :null => false
    t.decimal "gibbs_energy",                          :precision => 8, :scale => 3, :null => false
    t.decimal "enthalpy",                              :precision => 8, :scale => 3, :null => false
    t.decimal "entrophy",                              :precision => 8, :scale => 3, :null => false
    t.decimal "temperature",                           :precision => 8, :scale => 3, :null => false
    t.decimal "internal_energy",                       :precision => 8, :scale => 3, :null => false
    t.string  "freq_numbers",    :limit => 20000,                                    :null => false
    t.string  "intensities",     :limit => 20000,                                    :null => false
    t.binary  "normal_modes",    :limit => 2147483647,                               :null => false
    t.string  "unique_name",     :limit => 100,                                      :null => false
    t.integer "version"
    t.integer "tsnc_job",        :limit => 8
  end

  add_index "tsncjobirproperty", ["tsnc_job"], :name => "FKEBC66987B09704DE"

  create_table "tsncoptimization_process", :force => true do |t|
    t.string  "alphahomos",      :limit => 10000,      :null => false
    t.string  "alphalumos",      :limit => 10000,      :null => false
    t.string  "betahomos",       :limit => 10000,      :null => false
    t.string  "betalumos",       :limit => 10000,      :null => false
    t.binary  "detailed_forces", :limit => 2147483647, :null => false
    t.string  "scfe_energies",   :limit => 10000,      :null => false
    t.string  "total_forces",    :limit => 10000,      :null => false
    t.binary  "geometries",      :limit => 2147483647, :null => false
    t.string  "unique_name",     :limit => 100,        :null => false
    t.integer "version"
    t.integer "tsnc_job",        :limit => 8
  end

  add_index "tsncoptimization_process", ["tsnc_job"], :name => "FK56315011B09704DE"

  create_table "tsncstored_files", :force => true do |t|
    t.string  "calculation_type", :limit => 10,  :null => false
    t.string  "convergence",      :limit => 10,  :null => false
    t.integer "file_size",        :limit => 8,   :null => false
    t.string  "file_type",        :limit => 20,  :null => false
    t.string  "relative_path",    :limit => 500, :null => false
    t.string  "unique_name",      :limit => 100, :null => false
    t.integer "version"
    t.integer "tsnc_job",         :limit => 8
  end

  add_index "tsncstored_files", ["tsnc_job"], :name => "FKA12254FB09704DE"

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "name"
    t.string   "provider"
    t.string   "uid"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
